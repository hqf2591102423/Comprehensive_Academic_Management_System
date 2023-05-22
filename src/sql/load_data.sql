set foreign_key_checks=0;
use jiaowu;
SET sql_safe_updates=0;
delete from student;
delete from teacher;
delete from course;
delete from administrator;
delete from jiaowu;
delete from room;
delete from book;
delete from department;
delete from cps;
delete from cb;
delete from cr;
delete from sb;
delete from cta;
delete from sc;
delete from tc;


alter table course auto_increment=1;
alter table sb auto_increment=1;

insert into student(sno,sid,spwd,sname,ssex,sdept,stel) values('2214209','111000000','pwdpwd','陈振迪','男','6','1234567');
insert into student(sno,sid,spwd,sname,ssex,sdept,stel) values('2214204','222000000','pwdpwd','韩钊帆','男','6','7654321');
insert into student(sno,sid,spwd,sname,ssex,sdept,stel) values('2214222','333000000','pwdpwd','黄启帆','男','6','5524127');
insert into student(sno,sid,spwd,sname,ssex,sdept,stel) values('2214223','444000000','pwdpwd','刘柱','男','6','1433221');

insert into teacher(tno,tid,tpwd,tname,tsex,tdept,ttel,tmail) values('t1','111111111111111111','pwdpwd','李华','男','2','119110120','lihua@buaa.edu.cn');
insert into teacher(tno,tid,tpwd,tname,tsex,tdept,ttel,tmail) values('t2','222222222222222222','pwdpwd','古月声','男','6','119110120','ysgu1996@163.com');


insert into course(cname,cdept,ccap,ccredit,cdate) values('数据结构','6',150,3,'2022');
insert into course(cname,cdept,ccap,ccredit,cdate) values('算法','6',150,4,'2022');
insert into course(cname,cdept,ccap,ccredit,cdate) values('c++语言','6',150,4,'2022');
insert into course(cname,cdept,ccap,ccredit,cdate) values('数据库','6',1,2,'2022');

insert into department(dno,dname,dhead) values('2','电子系','t1');
insert into department(dno,dname,dhead) values('6','人工智能系','t2');
insert into department(dno,dname,dhead) values('21','人工智能学院',null);

insert into jiaowu(jno,jid,jpwd,jname,jtel,jmail) values('j1','123456789123456789','pwdpwd','henry','1008611','henry@163.com');
insert into administrator(ano,apwd,atel,amail) values('a1','pwdpwd','1008632','harry@163.com');

insert into Room(rname,rcap) values('1#一',120);
insert into Room(rname,rcap) values('1203',60);
insert into Room(rname,rcap) values('12315',60);
insert into Room(rname,rcap) values('1205',60);
insert into Room(rname,rcap) values('1109',60);

insert into book(bno,bname,bstore) values('0-751-12345-5','<算法导论>',100);
insert into book(bno,bname,bstore) values('1-123-12345-6','<数据结构>',100);
insert into book(bno,bname,bstore) values('2-600-82162-4','<<c++语言>>',1);
insert into book(bno,bname,bstore) values('3-600-82162-4','<<数据库>>',100);



set foreign_key_checks=1;

#C++语言程设需要： <<c++语言>>
#数据结构需要：<数据结构> 和 <<c++语言>>
#算法需要 ：<算法导论> 和 <<c++语言>>
insert into cps(pcno,scno) values(3,2);
insert into cb(cno,bno) values(3,'2-600-82162-4');
insert into cb(cno,bno) values(2,'0-751-12345-5');
insert into cb(cno,bno) values(2,'2-600-82162-4'); 
insert into cb(cno,bno) values(1,'1-123-12345-6'); 
insert into cb(cno,bno) values(1,'2-600-82162-4');

#星期一、四的一二节排C++语言
insert into cr(cno,rname,ctime) values(3,'1205','1-1');
insert into cr(cno,rname,ctime) values(3,'1205','1-2');
insert into cr(cno,rname,ctime) values(3,'1205','4-1');
insert into cr(cno,rname,ctime) values(3,'1205','4-2');
#星期二的一二节排数据结构
insert into cr(cno,rname,ctime) values(1,'12315','2-1');
insert into cr(cno,rname,ctime) values(1,'12315','2-2');
#星期三的三四节排算法
insert into cr(cno,rname,ctime) values(2,'1109','3-3');
insert into cr(cno,rname,ctime) values(2,'1109','3-4');
#星期三的一二节排数据库
insert into cr(cno,rname,ctime) values(4,'12315','3-1');
insert into cr(cno,rname,ctime) values(4,'12315','3-2');


insert into sc(sno,cno,grade) values('2214209',3,null);
insert into sc(sno,cno,grade) values('2214209',2,null);
insert into sc(sno,cno,grade) values('2214204',3,null);
insert into sc(sno,cno,grade) values('2214204',1,null);

#教师1 讲数据结构和C++语言和算法
#教师2 讲数据库
insert into tc(tno,cno) values('t1',1);
insert into tc(tno,cno) values('t1',3);
insert into tc(tno,cno) values('t2',4);
insert into tc(tno,cno) values('t1',2);

insert into cta(sno,cno,agree) values('2214209',1,'N');
insert into cta(sno,cno,agree) values('2214204',2,'Y');
insert into cta(sno,cno,agree) values('2214204',3,'Y');


insert into sb(sno,bno) values('2214209','2-600-82162-4');
insert into sb(sno,bno) values('2214209','2-600-82162-4');
insert into sb(sno,bno) values('2214204','1-123-12345-6');



