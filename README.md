# README

Supplementary code to my blog post on [our company blog](https://tecracer.de/blog/) for how to determine the bootability of EBS root volumes on AWS.

Under `bin/` you can find the implementation shown in my post, which uses some binary IO operations on the retrieved blocks. The additional `bootable_volumes_kaitai` source shows using Ruby-compiled [Kaitai](https://kaitai.io) schemas and would be more expandable for GPT partition tables.
