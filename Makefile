# Copyright 2017 Red Hat.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Use:
#
# `make oc` will download oc
# `make image` will build an image

oc:
	wget https://github.com/openshift/origin/releases/download/v3.6.0/openshift-origin-client-tools-v3.6.0-c4dd4cf-linux-64bit.tar.gz
	tar -xvzf openshift-origin-client-tools-v3.6.0-c4dd4cf-linux-64bit.tar.gz
	cp openshift-origin-client-tools-v3.6.0-c4dd4cf-linux-64bit/oc .

image: oc
	docker build -t oc-proxy .

clean:
	rm -f oc
	rm -rf openshift-origin-client-tools-v3.6.0-c4dd4cf-linux-64bit*
