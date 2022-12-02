Sarah
- Went to https://192.168.204.129/

### 3.1 Create a New Security Zone
- "Security zones are a logical way to group physical and virtual interfaces on the firewall to control and log the traffic that traverses your network through the firewall. An interface on the firewall must be assigned to a security zone before the interface can process traffic. A zone can have multiple interfaces of the same type (for example, Tap, Layer 2, or Layer 3 interfaces) assigned to it, but an interface can belong to only one zone."

- In the web interface, select **Network** > **Zones**.
- Click **Add** to create a new zone.
- Configure the following:

| Parameter | Value |
| --- | --- |
| Name | outside |
| Type | Layer3 |

![Image](https://user-images.githubusercontent.com/60114072/196056000-d367b02d-6bae-497b-935c-13a27eb835e1.png)
- Click ok

### 3.2 Create Interface Management Profiles

- "An Interface Management Profile protects the firewall from unauthorized access by defining the services and IP addresses that a firewall interface permits. You can assign an Interface Management Profile to Layer 3 Ethernet interfaces (including subinterfaces) and to logical interfaces (aggregate, VLAN, loopback, and tunnel interfaces)."
- In the web interface, select **Network** > **Network Profiles** > **Interface Mgmt**.
- Click **Add** to create an Interface Management Profile.
- The Interface Management Profile configuration window should appear.
- Configure the following:

| Parameter | Value |
| --- | --- |
| Name | ping-and-response-pages |
| Network Services | Select Ping and Response Pages check boxes |

![Image](https://user-images.githubusercontent.com/60114072/196056221-55e9bf00-da21-4882-908a-6983ac690b53.png)
- Click ok
- Click **Add** to create an Interface Management Profile.
- Configure the following:

| Parameter | Value |
| --- | --- |
| Name | ping-only |
| Network Services | Select Ping check box |

![Image](https://user-images.githubusercontent.com/60114072/196056326-b2c17f56-918a-43a6-a067-43f4aef74d37.png)
- Click ok
- Verify that your configuration is like the following
![Image](https://user-images.githubusercontent.com/60114072/196056413-3ab5c422-af61-4fce-bf95-cc1ed7cfdaad.png)

### 3.3 Configure Ethernet Interfaces
- "Firewall interfaces, or ports, enable a firewall to connect with other network devices and other interfaces within the firewall. The interface configuration of the firewall ports enables traffic to enter and exit the firewall. You can configure the firewall interfaces for virtual wire, Layer 2, Layer 3, and tap mode deployments."
- In the web interface, select Network > Interfaces > Ethernet.
- Click ethernet1/2 to configure the interface
- Configure the following:

| Parameter | Value |
| --- | --- |
| Comment | inside interface (LAN) |
| Interface Type | Layer3 |
| Virtual Router | None |

![Image](https://user-images.githubusercontent.com/60114072/196056703-89ea93b5-8446-4c2b-89d0-15bfc21607cf.png)
- Click the Security Zone drop-down list and select New Zone: (It will say Inside after you finish configuring the zone)

| Parameter | Value |
| --- | --- |
| Name | inside |
| Type | Layer3 |

![Image](https://user-images.githubusercontent.com/60114072/196056675-13b07eda-5b55-48e6-a5ac-44f2d6e151c6.png)
- Click ok
- You will be taken back to the ethernet interface set up page.
- Click the Ethernet Interface IPv4 tab (don't forget CIDR Notation)

| Parameter | Value |
| --- | --- |
| Type | Verify that the Static radio button is selected |
| IP | Click Add and type 192.168.204.10/24 |

![Image](https://user-images.githubusercontent.com/60114072/196056857-26636ecc-e471-4eed-a77f-5e4393bc4d76.png)
- Click the advanced tab
- Click the Management Profile drop-down list and select ping-and-response-pages
![Image](https://user-images.githubusercontent.com/60114072/196057275-f7697597-90bd-4ea3-b23c-30a495ba6814.png)
- Click OK to close the Ethernet Interface configuration window
- Click ethernet1/3 to configure the interface
- Configure the following

| Parameter | Value |
| --- | --- |
| Comment | dmz interface |
| Interface Type | Layer3 |
| Virtual Router | None |

![Image](https://user-images.githubusercontent.com/60114072/196057653-85e3ab0e-e58a-4b96-822e-32fbc81a8fcd.png)
- Click the Security Zone drop-down list and select New Zone
- Configure the following

| Parameter | Value |
| --- | --- |
| Name | dmz |
| Type | Layer3 |

![Image](https://user-images.githubusercontent.com/60114072/196057744-faa88af3-a4d1-494f-a571-7cc44526ac0c.png)
- Click OK to close the Zone configuration window
- Click the IPv4 tab.
- Configure the following

| Parameter | Value |
| --- | --- |
| Type | Static |
| IP | Click Add and type 192.168.50.1/24 |

![Image](https://user-images.githubusercontent.com/60114072/196057947-11fab0b0-d68a-471f-b8e1-e7126f69899c.png)
- Click the Advanced tab.
- Click the Management Profile drop-down list and select ping-only.
![Image](https://user-images.githubusercontent.com/60114072/196058057-3ec47c37-6b69-4579-8ab8-3d19fee68b89.png)
- Click OK to close the Ethernet Interface configuration window.
- Click ethernet1/1 to configure the interface.
- Configure the following

| Parameter | Value |
| --- | --- |
| Comment | outside interface (WAN) |
| Interface Type | Layer3 |
| Virtual Router | None |
| Security Zone | outside |

![Image](https://user-images.githubusercontent.com/60114072/196059295-fbbbde26-6af1-47e1-94b0-2709248fe1e2.png)
- Click the IPv4 tab and configure the following

| Parameter | Value |
| --- | --- |
| Type | DHCP Client |

![Image](https://user-images.githubusercontent.com/60114072/196059316-14f48485-09c8-4073-bb35-528df5d62f08.png)
- Click OK to close the Ethernet Interface configuration window.
- Click ethernet1/4 to configure the interface
- Configure the following

| Parameter | Value |
| --- | --- |
| Comment | vWire zone named danger |
| Interface Type | Virtual Wire |
| Virtual Wire | None |

![Image](https://user-images.githubusercontent.com/60114072/196059448-5e2c0ed3-9807-4864-89cc-f15828da5611.png)
- Click the Security Zone drop-down list and select New Zone.
- Configure the following

| Parameter | Value |
| --- | --- |
| Name | danger |
| Type | Virtual Wire |

![Image](https://user-images.githubusercontent.com/60114072/196059488-c46eece9-be41-4780-8c8e-ee2a3b575c10.png)
- Click OK to close the Zone configuration window
- Click OK to close the Ethernet Interface configuration window.
- Click ethernet1/5 to open the interface.
- Configure the following

| Parameter | Value |
| --- | --- |
| Comment | vWire zone named danger |
| Interface Type | Virtual Wire |
| Virtual Wire | None |
| Security Zone | danger |

![Image](https://user-images.githubusercontent.com/60114072/196059618-0a28e75a-b2b9-4d13-ba29-4f40d6923c8b.png)
- Click OK to close the Ethernet Interface configuration window.
- Verify that your configuration is like the following
![Image](https://user-images.githubusercontent.com/60114072/196059754-28276590-b091-4336-a78e-851d0c2c3af3.png)

### 3.4 Create a Virtual Wire
- "A virtual wire interface binds two Ethernet ports. A virtual wire interface allows all traffic or just selected VLAN traffic to pass between the ports. No other switching or routing services are available."
- In the web interface, select Network > Virtual Wires.
- Click Add
- Configure the following

| Parameter | Value |
| --- | --- |
| Name | danger |
| Interface 1 | ethernet1/4 |
| Interface 2 | ethernet1/5 |


![Image](https://user-images.githubusercontent.com/60114072/196061539-bb6ad91e-52a1-4454-ae28-0433701fb99d.png)
- Click OK to create your virtual wire
- Verify that your configuration is like the following
![Image](https://user-images.githubusercontent.com/60114072/196061596-3466cd51-d86b-481e-aff4-a5989299caa8.png)

### 3.5 Create a Virtual Router

- In the web interface, select Network > Virtual Routers.
- Click default to open the default virtual router.
- Rename the default router **lab-vr**.
- Locate the General tab > Interfaces box and click Add.
- Add the following interfaces: ethernet1/1, ethernet1/2, and ethernet1/3
![Image](https://user-images.githubusercontent.com/60114072/196062505-d76a7b91-3433-456c-a24c-d47e68051ed5.png)
- Click OK to close the Virtual Router - default window.
- Commit all changes








Nick
### 3.7 Modify Outside Interface Configuration
- "In this section, you will reconfigure Ethernet Interface 1/1 to use a static IP address and add a static route to your virtual router. Under most conditions you will configure the firewall’s Layer 3 interfaces with static IP addresses. We initially configured ethernet1/1 to use the DHCP client function only to illustrate the feature should you ever need it."
- In the web interface, select Network > Interfaces > Ethernet.
- Select but do not open ethernet1/1:
- Click Delete, then click Yes.
- Commit all changes.
- Click ethernet1/1 to configure the interface.

| Parameter | Value |
| --- | --- |
| Comment | outside interface (WAN) |
| Interface Type | Layer3 |
| Virtual Router | lab-vr |
| Security Zone | outside |

- Click the IPv4 tab and configure the following:

| Parameter | Value |
| --- | --- |
| Type | Static |
| IP | Click Add and type 192.168.204.10/24 |

- Click OK to close the Ethernet Interface configuration window.
- In the web interface, select Network > Virtual Routers.
- Click the lab-vr virtual router to open.
- Click the Static Routes vertical tab:
- Click Add and configure the following static route

| Parameter | Value |
| --- | --- |
| Name | default-route |
| Interface | ethernet1/1 |
| Destination | 0.0.0.0/0 |
| Next Hop | Verify that IP Address is selected |
| Next Hop IP Address | 192.168.204.2/24 | 


- Click OK to add the static route.
- Click OK to close the Virtual Router – lab-vr configuration window.
- Commit all changes.


