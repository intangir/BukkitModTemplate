package com.github.intangir.BasicMod;

import java.util.logging.Logger;

import org.bukkit.Bukkit;
import org.bukkit.event.Listener;
import org.bukkit.plugin.PluginDescriptionFile;
import org.bukkit.plugin.java.JavaPlugin;

public class BasicMod extends JavaPlugin implements Listener
{
    public Logger log;
    public PluginDescriptionFile pdfFile;
    
	public void onEnable()
	{
		log = this.getLogger();
		pdfFile = this.getDescription();

		Bukkit.getPluginManager().registerEvents(this, this);
		
		log.info("v" + pdfFile.getVersion() + " enabled!");
	}
	
	public void onDisable()
	{
		log.info("v" + pdfFile.getVersion() + " disabled.");
	}
	
/*	@EventHandler(ignoreCancelled=true)
	public void onEntityInteract(PlayerInteractEntityEvent e)
	{
	    Entity npc = e.getRightClicked();
	    if (npc == null)
	    {
	        return;
	    }
	    
	    if (npc.getType() == EntityType.VILLAGER)
	    {
	      e.setCancelled(true);
	    }
    }
*/
}

