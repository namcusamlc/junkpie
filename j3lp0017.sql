/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  hieuphan
 * Created: Feb 24, 2021
 */

USE [master]
GO
CREATE DATABASE [J3LP0017]
GO
USE [J3LP0017]
GO
CREATE TABLE [Contact](
    [id] [int] IDENTITY(1,1) PRIMARY KEY,
    [image] [nvarchar](255) NOT NULL,
    [address] [nvarchar](255) NOT NULL,
	[city] [nvarchar](255) NOT NULL,
	[country] [nvarchar](255) NOT NULL,
	[tel] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
)

INSERT [Contact] (image, address, city, country, tel, email)
VALUES ('map.jpg', N'Khu công nghệ cao Hòa Lạc – Km29, ĐCT08, Thạch Hoà, Thạch Thất', N'Hà Nội', N'Việt Nam', '+84941005295', 'fpt@fpt.edu.vn');


create table [Photographer](
    [id] [int] IDENTITY(1,1) PRIMARY KEY,
    [title] [nvarchar](255) NOT NULL,
    [desc] [text] NOT NULL,
    [image] [nvarchar](255) NOT NULL,
)

INSERT [Photographer](title, [desc], image)
VALUES ('View Gallery 1', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', 'gallery1.jpg');

INSERT [Photographer](title, [desc], image)
VALUES ('View Gallery 2', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', 'gallery2.jpg');

INSERT [Photographer](title, [desc], image)
VALUES ('View Gallery 3', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', 'gallery3.jpg');

INSERT [Photographer](title, [desc], image)
VALUES ('View Gallery 4', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', 'gallery4.jpg');

INSERT [Photographer](title, [desc], image)
VALUES ('View Gallery 5', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', 'gallery5.jpg');

INSERT [Photographer](title, [desc], image)
VALUES ('View Gallery 6', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', 'gallery6.jpg');

INSERT [Photographer](title, [desc], image)
VALUES ('View Gallery 7', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', 'gallery7.jpg');

INSERT [Photographer](title, [desc], image)
VALUES ('View Gallery 8', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation', 'gallery8.jpg');

create table [About](
    [id] [int] IDENTITY(1,1) PRIMARY KEY,
    [content] text NOT NULL,
)

INSERT [About] (content)
values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet
    dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit
        lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate
        velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio
            dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
            Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim')