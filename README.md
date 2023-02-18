Getting Started

    Challenge

    TASK 1
    • Create a solution that presents a Static Web Page (a simple hello world web page is enough);
    • Guarantee service High Availability;
    • The service should be available only in the internal network using a domain name (in order to not spend any money, you
    can create only internal domains on AWS, or use any other way to achieve that).
    TASK 2
    • Create a server in a separate network from the solution in Task 1;
    • This server should have available the following packages: Python, Boto, AWS cli;
    • The server should only be accessible by SSH from your home IP.
    TASK 3
    • Perform the necessary changes in the infrastructure to allow the server created in Task 2 to access the web page created
    in Task 1 in the most secure way possible;
    • Write a Dockerfile that creates an image with the same packages available as described on Task 2;
    • Create a new instance on the network of Task 2 that runs the container created by the Dockerfile in the previous point;
    • Create a Database that can only be accessible from the servers on the task 2 network zone, guaranteeing a Recovery
    Point Objective of at least 1 day.

    Prerequisites

    export AWS_ACCESS_KEY_ID=***********
    export AWS_SECRET_ACCESS_KEY=**********

Installation

    terraform init

    terraform apply
