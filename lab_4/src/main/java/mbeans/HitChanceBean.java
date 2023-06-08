package mbeans;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.management.*;
import java.lang.management.ManagementFactory;

@ManagedBean(name = "hitChance", eager = true)
@SessionScoped
public class HitChanceBean implements HitChanceBeanMBean{
    private double hitChance = 0.0;
    private int counter = 0;
    private int hitCounter = 0;

    public HitChanceBean() {
        try {
            ObjectName objectName = new ObjectName("ru.denis.mbeans:name=hitChance");
            MBeanServer server = ManagementFactory.getPlatformMBeanServer();
            server.registerMBean(this, objectName);
        } catch (MalformedObjectNameException | NotCompliantMBeanException | InstanceAlreadyExistsException |
                MBeanRegistrationException e) {
            throw new RuntimeException(e);
        }
    }

    public void updateCounters(boolean result) {
        if (result)
            hitCounter++;
        counter++;
        hitChance = (double) hitCounter/counter*100;
    }

    public double getHitChance(){
        return hitChance;
    }
}
