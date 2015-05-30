## Measure autowiring

* Pattern1 @Inject (byType)
* Pattern2 @Inject + @Named (byName)
* Pattern3 @Autowired (byType)
* Pattern4 @Autowired + @Qualifier (byName)
* Pattern5 @Resource (byName)

### How to measure

Run the script.

```
$ sh run.sh N
```

This benchmark application have N `Controller`s, `Service`s ,`ServiceImpl`s and one `Main` endpoint for each patterns.
When N=100, (100 + 100 + 100 + 1) * 5 = 1505 classes will be generated.

`run.sh` execute all patterns twice.

```
$ sh run.sh 100
Compile generator
Delete old files
Generate files
Build project
Exec (1st)
5 30, 2015 12:35:18 午後 org.springframework.context.annotation.AnnotationConfigApplicationContext prepareRefresh
情報: Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@3b0c9ce8: startup date [Sat May 30 12:35:18 JST 2015]; root of context hierarchy
5 30, 2015 12:35:18 午後 org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor <init>
情報: JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
Hello World!
pattern = PATTERN1
count = 100
StopWatch '': running time (millis) = 1313
-----------------------------------------
ms     %     Task name
-----------------------------------------
01312  100%  
00001  000%  

5 30, 2015 12:35:23 午後 org.springframework.context.annotation.AnnotationConfigApplicationContext prepareRefresh
情報: Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@735d30bb: startup date [Sat May 30 12:35:23 JST 2015]; root of context hierarchy
5 30, 2015 12:35:24 午後 org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor <init>
情報: JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
Hello World!
pattern = PATTERN2
count = 100
StopWatch '': running time (millis) = 2008
-----------------------------------------
ms     %     Task name
-----------------------------------------
02007  100%  
00001  000%  

5 30, 2015 12:35:30 午後 org.springframework.context.annotation.AnnotationConfigApplicationContext prepareRefresh
情報: Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@4d34e72e: startup date [Sat May 30 12:35:30 JST 2015]; root of context hierarchy
5 30, 2015 12:35:31 午後 org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor <init>
情報: JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
Hello World!
pattern = PATTERN3
count = 100
StopWatch '': running time (millis) = 1843
-----------------------------------------
ms     %     Task name
-----------------------------------------
01841  100%  
00002  000%  

5 30, 2015 12:35:37 午後 org.springframework.context.annotation.AnnotationConfigApplicationContext prepareRefresh
情報: Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@45421e7d: startup date [Sat May 30 12:35:37 JST 2015]; root of context hierarchy
5 30, 2015 12:35:37 午後 org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor <init>
情報: JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
Hello World!
pattern = PATTERN4
count = 100
StopWatch '': running time (millis) = 1840
-----------------------------------------
ms     %     Task name
-----------------------------------------
01838  100%  
00002  000%  

5 30, 2015 12:35:44 午後 org.springframework.context.annotation.AnnotationConfigApplicationContext prepareRefresh
情報: Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@dc07920: startup date [Sat May 30 12:35:44 JST 2015]; root of context hierarchy
5 30, 2015 12:35:44 午後 org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor <init>
情報: JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
Hello World!
pattern = PATTERN5
count = 100
StopWatch '': running time (millis) = 1541
-----------------------------------------
ms     %     Task name
-----------------------------------------
01535  100%  
00006  000%  

Exec (2nd)
5 30, 2015 12:35:50 午後 org.springframework.context.annotation.AnnotationConfigApplicationContext prepareRefresh
情報: Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@5238a949: startup date [Sat May 30 12:35:50 JST 2015]; root of context hierarchy
5 30, 2015 12:35:51 午後 org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor <init>
情報: JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
Hello World!
pattern = PATTERN1
count = 100
StopWatch '': running time (millis) = 1740
-----------------------------------------
ms     %     Task name
-----------------------------------------
01739  100%  
00001  000%  

5 30, 2015 12:35:57 午後 org.springframework.context.annotation.AnnotationConfigApplicationContext prepareRefresh
情報: Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@3cfc13d7: startup date [Sat May 30 12:35:57 JST 2015]; root of context hierarchy
5 30, 2015 12:35:57 午後 org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor <init>
情報: JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
Hello World!
pattern = PATTERN2
count = 100
StopWatch '': running time (millis) = 1818
-----------------------------------------
ms     %     Task name
-----------------------------------------
01817  100%  
00001  000%  

5 30, 2015 12:36:04 午後 org.springframework.context.annotation.AnnotationConfigApplicationContext prepareRefresh
情報: Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@3e303152: startup date [Sat May 30 12:36:04 JST 2015]; root of context hierarchy
5 30, 2015 12:36:04 午後 org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor <init>
情報: JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
Hello World!
pattern = PATTERN3
count = 100
StopWatch '': running time (millis) = 1918
-----------------------------------------
ms     %     Task name
-----------------------------------------
01917  100%  
00001  000%  

5 30, 2015 12:36:11 午後 org.springframework.context.annotation.AnnotationConfigApplicationContext prepareRefresh
情報: Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@7f9e21a4: startup date [Sat May 30 12:36:11 JST 2015]; root of context hierarchy
5 30, 2015 12:36:11 午後 org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor <init>
情報: JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
Hello World!
pattern = PATTERN4
count = 100
StopWatch '': running time (millis) = 2144
-----------------------------------------
ms     %     Task name
-----------------------------------------
02142  100%  
00002  000%  

5 30, 2015 12:36:19 午後 org.springframework.context.annotation.AnnotationConfigApplicationContext prepareRefresh
情報: Refreshing org.springframework.context.annotation.AnnotationConfigApplicationContext@6aa9c7fc: startup date [Sat May 30 12:36:19 JST 2015]; root of context hierarchy
5 30, 2015 12:36:19 午後 org.springframework.beans.factory.annotation.AutowiredAnnotationBeanPostProcessor <init>
情報: JSR-330 'javax.inject.Inject' annotation found and supported for autowiring
Hello World!
pattern = PATTERN5
count = 100
StopWatch '': running time (millis) = 2387
-----------------------------------------
ms     %     Task name
-----------------------------------------
02385  100%  
00002  000%  
```

In the eample above, 

* Pattern1 took 1312, 1739 [ms]
* Pattern2 took 2007, 1817 [ms]
* Pattern3 took 1841, 1917 [ms]
* Pattern4 took 1838, 2142 [ms]
* Pattern5 took 1535, 2385 [ms]




