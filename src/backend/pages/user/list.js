import React, { useEffect, useState } from "react";
import apiUser from "../../../api/apiUser";

function UserList() {
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [selectedUser, setSelectedUser] = useState(null);
  const [loadingDetail, setLoadingDetail] = useState(false);

  useEffect(() => {
    apiUser.getAll()
      .then((res) => {
        console.log("API Response:", res); // Log the API response to check its structure
        if (Array.isArray(res) && res.length > 0) { // Check if res is an array and not empty
          const userData = res.map((user) => ({
            id: user.id,
            username: user.username, // Adjusted to match your API response structure
            email: user.email,
          }));
          setUsers(userData);
        } else {
          setError("Dữ liệu từ API không hợp lệ");
        }
      })
      .catch((error) => {
        console.error("Lỗi khi lấy dữ liệu:", error);
        setError("Đã xảy ra lỗi khi lấy dữ liệu");
      })
      .finally(() => setLoading(false));
  }, []);

  const handleDetailClick = (id) => {
    setLoadingDetail(true);
    apiUser.getUserById(id)
      .then((res) => {
        setSelectedUser(res);
      })
      .catch((error) => {
        console.error(`Lỗi khi lấy chi tiết người dùng với ID ${id}:`, error);
        setError("Đã xảy ra lỗi khi lấy chi tiết người dùng");
      })
      .finally(() => setLoadingDetail(false));
  };

  if (loading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>{error}</div>;
  }

  return (
    <div>
      <h1>Danh Sách Người Dùng</h1>
      <table className="table table-striped table-bordered">
        <thead>
          <tr>
            <th>ID</th>
            <th>Tên Người Dùng</th>
            <th>Email</th>
            <th>Hành Động</th>
          </tr>
        </thead>
        <tbody>
          {users.map((user) => (
            <tr key={user.id}>
              <td>{user.id}</td>
              <td>{user.username}</td>
              <td>{user.email}</td>
              <td>
                <button className="btn btn-success" onClick={() => handleDetailClick(user.id)}>
                  Chi Tiết
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>

      {loadingDetail && <div>Loading chi tiết...</div>}
      {selectedUser && (
        <div>
        {/* CHI TIẾT NGƯỜI DÙNG */}
          <h2>Chi Tiết Người Dùng</h2>
          <table className="table table-striped table-bordered">
            <tbody>
              <tr>
                <td>ID</td>
                <td>{selectedUser.id}</td>
              </tr>
              <tr>
                <td>Tên Người Dùng</td>
                <td>{selectedUser.username}</td>
              </tr>
              <tr>
                <td>Email</td>
                <td>{selectedUser.email}</td>
              </tr>
              <tr>
                <td>Phone</td>
                <td>{selectedUser.phone}</td>
              </tr>
              <tr>
                <td>Address</td>
                <td>{selectedUser.address}</td>
              </tr>
             
            </tbody>
          </table>
        </div>
      )}
    </div>
  );
}

export default UserList;