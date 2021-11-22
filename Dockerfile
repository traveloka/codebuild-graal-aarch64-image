FROM public.ecr.aws/icesoft/amazonlinux2-aarch64-standard:2.0
RUN wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.3.0/graalvm-ce-java11-linux-aarch64-21.3.0.tar.gz && tar -xzf graalvm-ce-java11-linux-aarch64-21.3.0.tar.gz
RUN ls -al
# native compilation
RUN gu install native-image
# awscli
RUN pip install awscli boto3
# samcli
RUN pip install aws-sam-cli==1.35.0
