package org.antwalk.repository;

import java.util.List;

import org.antwalk.entity.ArrivalTimeTable;
import org.antwalk.entity.Route;
import org.antwalk.entity.RouteStop;
import org.antwalk.entity.Stop;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface ArrivalTimeRepo extends JpaRepository<ArrivalTimeTable, RouteStop>{

    public List<ArrivalTimeTable> findAllByRouteStop_Stop(Stop stop);
    
    public  List<ArrivalTimeTable> findAllByRouteStop_RouteOrderByMorningArrivalTime(Route route);

    public List<ArrivalTimeTable> findAllByRouteStop_RouteOrderByEveningArrivalTime(Route route);

}
