package mbeans;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.management.*;
import java.lang.management.ManagementFactory;

@ManagedBean(name = "Count", eager = true)
@SessionScoped
public class CountBean extends NotificationBroadcasterSupport  implements CountBeanMBean{

    private int allCounter = 0;
    private int missCounter = 0;
    private int sequenceNumber=0;

    public CountBean() {
        try {
            ObjectName objectName = new ObjectName("ru.denis.mbeans:name=Count");
            MBeanServer server = ManagementFactory.getPlatformMBeanServer();
            server.registerMBean(this, objectName);
        } catch (MalformedObjectNameException | NotCompliantMBeanException | InstanceAlreadyExistsException |
                MBeanRegistrationException e) {
            throw new RuntimeException(e);
        }
    }

    public void update(boolean result){
        allCounter++;

        if(!result){
            missCounter++;
        }

        if(allCounter%15==0){
            Notification notification = new Notification ("15 points", this , sequenceNumber++ ,
                    "Количетсво точек кратно 15");
            sendNotification(notification);
            System.out.println("15 точек");
        }
    }

    public int getAllCounter(){
        return allCounter;
    };

    public int getMissCounter(){
        return missCounter;
    };
}
