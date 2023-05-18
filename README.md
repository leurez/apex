# Apex

the high performance ditribute inference framework


## Basic Info

- Create On: 2023-05-18
- Orgnization: AILab@Ubiquant
- Author: xqli

## Change Log

- 2023-05-18 init from triton-inference-server::{command, client}
    - the reason we do not directly using triton-client were as followings
        - without docker, build a client in ubiquant's env is very difficult
        - triton-client is trying to support too many features which many nerver been used in our situations
        - too many features may let the system runing slowly, which is not match with the project's perpose
        - in the future we will support rdma, which need us know the details in the frameworks
