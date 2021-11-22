FROM public.ecr.aws/icesoft/amazonlinux2-aarch64-standard:2.0
RUN wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.3.0/graalvm-ce-java11-linux-aarch64-21.3.0.tar.gz && tar -xzf graalvm-ce-java11-linux-aarch64-21.3.0.tar.gz
RUN ls -al graalvm-ce-java11-21.3.0/
# native compilation
RUN export GRAALVM_HOME=graalvm-ce-java11-21.3.0/bin && export PATH=$GRAALVM_HOME:$PATH && gu install native-image
