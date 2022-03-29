<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<style>
body{
  background-image:url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0NDQ0NDQ0NDQ0NCA0HDQgNDQ8IDQcNFREWFhURExMYHSggGBoxGxMTITEhMSkrLi4uFx8zODMsNygtLisBCgoKDQ0NFQ0PFSsZFRkrKysrKysrKysrNy0tKzcrLSstNzcrKy03LS0rLSsrKy0tKy0tKysrKystKysrKysrK//AABEIALcBEwMBIgACEQEDEQH/xAAaAAADAQEBAQAAAAAAAAAAAAACAwQBAAYH/8QAGxABAQEBAQEBAQAAAAAAAAAAAAIBEQMSUlH/xAAbAQADAQEBAQEAAAAAAAAAAAABAgMEAAUHBv/EAB0RAQEBAAMBAQEBAAAAAAAAAAABAgMREhMhMVL/2gAMAwEAAhEDEQA/AJByEcMnT6dToOgqDoJYz6Og+CYPhOxn0ZLt0PWdCZS6F1wemecm89Ov4PzhV5wDzlV5wnpn3tsSfEuiTolGsm9MmTZlsybMp1DWgZIskzJFkkTui8lvyZ8t+XdF9FfLvk35d8j070T8s+TvlnyPQ+iflmydss2TdD6I2Q7J+yHZHo00Rsg2VGyHZNIeaTbJdSq2S9k0ik0lqQbKmpL2TyKzRHy43jh6N7eHMjAGxjdY/Q0yD4Kg+MTsZ9U2MNwuBbpPKF/W9d0LcNMh0ZGdVeUleUq/OS6Q5NGecqYkHnKiJZ9Me9CiT5lkSdMpVl1p0yZktmTMkliF0HJFkjyRZgdEui/lvyPjeD0X0Vx3DOO4bp3ZXGcN4zcHoeyuM3DeB3DeTdlbjNw3cDuD0aUrcBuH7gNw0hpSdkvZP3C6w0yeaIrCqw+iaPMm+hfHNafy76PC4bGFSdDVY/V6NnDowqDpTsQ0Z1nWbrHTKfQsO8pJlV5SNhN3qH+Uq/OSfLFXniGmLk0d5yojCvPFMYhYx7o4w6cDGHTidjLqtmTMx04Zkl6RtZmN4PMbx3SdoOO4ZxnDdO7L4zhm4zg9D2DjOD3Gbhuh7BuB3DNDuD0MoNwO4ZuB00ybsG4DR6XR5l3sFFUZRVHmQ+hdE0bRVKzIfQDnON5H28PJsFSdCtj9to2DS4F0nSFE7Atw8yB3lizyxP44s8sJqM3JVHlirzwjzxV54z6jDyU7zxRGFeeKIxGxj3TIw6MBGHTidjNqinDJxk4ZOB0ja7MbwWY3juk+wcdwfGbhpHdl7jNwes00huwbjNwWg3TTI9s0O63dBunmQu2boN1u6DdPMFvIytL3W7oK08yS8ga0utFWl1qkwX2CtKodaVWqTAe3OY43lT28TB0EydA2P3+jcd1juhMpCHGF4d5Yfouv4q8sWeWJfLFnliOoxclUeeKvPE/mq88Z9Ri5KfGKIwjzUQlYx7p0YdOFQfGEsZtUycMnAThmF6Q1RZjeOzXbrvKV3GcDrt0FaeZD6O3QbrN0G0pMB9G7oN1m6DdPMB9G7oN1m6DdUmCXkbug3Wbod08wW7dug3WbQN1SYLdurS611aXWqTBfbK0vddWh6pMDN/ouuB1zvC3p42DpJk7C2Po+hdcHrcGZJ0PFPjiaVXlg2J7/AIr8lfkl8lfkhqMHIp81Xmm81XmhqMW1HmfBEKISuWTZ0HSRNCyyeWPk3Ioyh5SbKMmh8PP5OVRmu3Sspu07yzXl/XVoNplUXtKTIfVu0DaZtF7SkwP0Fug2g7QNpSYd9BbQNoO0DaPMB7FtA2g7QNpSYD2LaBuh2gVSkwX22qLqmVRVUpMB6bVM+i9pn0fwfGjPpxX04fC/p5WDMKkzqHl9Pom5oBYeZLTYV+STzWeQaiHIr8lfmk8lfmhrLByKvNT5pIo+aRuWHk1IrmjJtJNmZZfDzOblVZYstLljmneHlcvN2qmjZpJNGZQeGLfIqynbZGU7ad4Z7yGbRe0HaL2jzDpyCqgbQdoG0pMG9i2gbQdoG0pMD7FtA2g7QNpSYd7FtA2g7QNo8w70LaLqmbRdUpMO9Nqi6plUDdVmA9N6zod1m6bytii+ml9cPlf081I80qdFms3l9WpmDwrKFlGmU7Yp8lflqDzpV50GsMnLuLvOlEUhilEWncPM5uVbNmzaObMmyfN5PNyrMseWjyxzYfN5HNzLJs2aSTRk0W4efvauaHlpZozKDwy72o+m/Sf7d9h4QuztsG0XtB2jzAex7QNoG0DaPMHmx7QNoG0DaUmDTQ9oG0DaDtKTJvQ9oG0DaDtHmXehVQNoO0DdUmXem7QN1m6zdPMumm9Zus6zdN5XxW9cHrh8r+nmcpv0T9OykJh9Xu1GULKT5Qso8wz75FfnSnzpB50oi3XDz+bkXxR02hizpsvzeTz8q2bMy0U2ZNh83j8/KsmzppHNGzRLh5nJtZNGzSOaNm07hk3pXNCy0uWPLL4ZdaU/bvsj7d9u8JXR22HaK22bRpgPRm0DaL2g7R5g80PaBtA2gbR5g80ZtB2i9pm0eZN2PaBtB2g7p5kexboN1m6Hp5l3YmdZ1xujSu3WN43jmjEtLcZxwq9V43adlE7Tsp2cPqOtqMoWUnyhZSkwy8nIrij4tDFnTY/N5nPyrps2bQzZs2HzePz8q2bOikcUdFFuHl8mlk0dNI5o2aSuGLelk0ZNpJoybJcMm9KsseWlyxZZPDPqqftv2n+3fbvCVp/0zaJ+2bYzDuzdoG0XtA2jTB5TdoG0XtM+jzCkpm0HaB9B+jTJ5TNpm6D6Z00yI+s6HrcHoRCzA4ZgVXEdmN43MbwrVgPHD45yvT53VMyyqoOW2Zw+ha5PxTlNy0+W37VmGLl5Fc2bNops6KN83l83J2tij4pHFHxQeHl8mlkUdNI4o6aJcMPJVc0bNJJo2aSuGPdVzQ8tLNjy07hl3VWWPLS5Ysslwhqqftv2n+3fYeEz/tm2T9M+x8Oh20HaK2w7Zpg8M2nfRO0z6N5Vh30z6K+ndHypIb13S/pua7o0hmaLNLzR5oWHkMk3Cc0yaJYrk3MHmBnTolOtOIz5Ypzzcn6jT86+RbQPpzntZkfsdarcsWU5yskYOW0yNURTHG6YORRFHRTXF6YOQ2aOmmOJZGHZ00ZNOclZGTZk0PLc5Oxl0PLFlucWyIVv237c4OoR30z7c53Qxm2Hbc4ZFch23fTnD0rHfTfpzndKSNzR5rHF6UkHmjzXOLTyDzTJ1zk6eGTp0Vv9c5OidnrX61znJ9QPpv8A1X//2Q==');
  background-size: 100%;
}
</style> 
<body>
  <h2 align="center">LIST OF BRANCHES</h2>
  <table border="3" align="center">
    <tr>
      <th style="text-align:left">BRANCH NAME</th>
      <th style="text-align:left">COUNTRY</th>
      <th style="text-align:left">RATING</th>
      <th style="text-align:left">ADDRESS</th>
    </tr>
    <xsl:for-each select="review1/branch">
    <tr>
      <td><xsl:value-of select="branch_name"/></td>
      <td><xsl:value-of select="country"/></td>
      <td><xsl:value-of select="rating"/></td>
      <td><xsl:value-of select="address"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
