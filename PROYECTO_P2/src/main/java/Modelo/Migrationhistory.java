package Modelo;

import javax.persistence.*;

@Entity
@Table(name = "__migrationhistory")
public class Migrationhistory {
    @Id
    @Column(name = "MigrationId", nullable = false, length = 150)
    private String migrationId;

    @Column(name = "ContextKey", nullable = false, length = 300)
    private String contextKey;

    @Lob
    @Column(name = "Model", nullable = false)
    private String model;

    @Column(name = "ProductVersion", nullable = false, length = 32)
    private String productVersion;

    public String getMigrationId() {
        return migrationId;
    }

    public void setMigrationId(String migrationId) {
        this.migrationId = migrationId;
    }

    public String getContextKey() {
        return contextKey;
    }

    public void setContextKey(String contextKey) {
        this.contextKey = contextKey;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getProductVersion() {
        return productVersion;
    }

    public void setProductVersion(String productVersion) {
        this.productVersion = productVersion;
    }

}