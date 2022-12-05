# Dependancies

* Our project has quite a few dependencies:
  * We rely on suppliers for our physical infrastructure: HMIs, PLCs, IEDs, and DCSs.
    > We need these devices to complete our capstone
  * We rely on open-source software instead of commercial/industrial software specialized for ICS.

There are a lot of dependencies required for the ICS project, though among the dependencies, there are multiple ways to achieve the same functionality.

| What | Description | Cost | Who Pays/Provides |
| :-- | :-- | :-- | :-- |
| Equipment | ICS systems are required to perform the project | $$$$ | The school and donations from multiple manufactures |
| VMware | VMware is needed to host the VMs required for the network and create simulations of traffic | None | Ourselves |
| Router/Firewall | Physical and virtual routers capable of running Pan-OS | $0-300 | School (virtual or already purchased ourselves) |
| Server | Physical or virtual server(s) capable of hosting the rest of our services | None | Purchased ourselves |
| Manufacture/LC's help (optional) | If the project is allowed to continue after the end of the year, a delegated team and individuals need to be there to work with manufacturers at the LC and coordinate further efforts | None | School |

The main variables are the Industrial Control Systems, which can come in many forms. Anything that runs OpenPLC or OpenICS could work too. The supplementary services could also run in either a VM (ideal) or, at worst, run alongside each other on a Raspberry Pi (less than ideal) or our ESXI server. Making the project cloud-hosted might also be possible, though that would incur much higher costs regularly.

https://github.com/Paiet/Capstone/wiki/Dependancies
