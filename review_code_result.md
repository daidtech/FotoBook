## Review code 20200916
---

1. Khai báo association cần nghĩ về tính toàn vẹn dữ liệu. Ví dụ khi 1 Photo bị xóa thì `likes` thuộc về nó cũng nên bị xóa, hoặc khi 1 user thì xóa thì những gì nó `likes` hoặc photos/albums của nó cũng cần remove đi.

2. `Like` thì đối tượng dc like sẽ là 1 `Album` hoặc 1 `Photo`, ko thể nào là 2 cái cùng lúc nên việc store 2 khóa ngoại ở table `likes` là dư thừa. Cần sử dụng polymorphic

3. Các vấn đề của routes

    - Namespace profile chẳng đóng góp được tác dụng gì ở đây cả. Những thức thuộc về `public_profiles` cần phải có param `user_id` mới có thể work dc (ví dụ láy danh sách album thì phải biết lấy cho user nào). Với cách làm hiện nay ko có chỗ truyền param `user_id` vào route, chỉ còn cách duy nhất là truyền vào query string, đây là cách ko nên sử dụng. Những cái gì mà thấy rằng cách query khác nhau giữa public profile thì nên chia ra module khác nhau (controller khác nhau), những gì giống nhau thì sử dụng chung 1 controller. Ví dụ:

        + Public profile albums `/users/:user_id/albums` -> `public_profiles/albums_controller#index` sẽ khác với my profile album `/albums` -> `albums_controller#index`

        + Public profile follows  `/users/:user_id/followings` -> `followings_controller#index` sẽ giống với my profile `/followings` -> `followings_controller#index`

    - Việc lồng resource `photos` và resource `albums` để sử dụng cho màn hình nào vậy?     


## Review code 20200917
---

1. `Album has_many :photos` cũng cần `dependent: :destroy`

2. Update lại association bên `Like` mà mấy cái khóa ngoại dư thừa chưa xóa.

3. Route từ dòng 10 đến dòng 19 đều phù hợp để dùng resourceful. Cần sửa lại.

4. Dòng 4 đến dòng 7, ko nên define action vào application controller. Nó là controller base để các controller khác kế thừa, chỉ viết những gì mà các controller khác cần dùng thôi chứ ko viết action vào.
