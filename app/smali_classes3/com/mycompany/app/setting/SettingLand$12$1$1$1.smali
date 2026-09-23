.class Lcom/mycompany/app/setting/SettingLand$12$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLand$12$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand$12$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$12$1$1$1;->c:Lcom/mycompany/app/setting/SettingLand$12$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand$12$1$1$1;->c:Lcom/mycompany/app/setting/SettingLand$12$1$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand$12$1$1;->c:Lcom/mycompany/app/setting/SettingLand$12$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingLand$12$1;->c:Lcom/mycompany/app/setting/SettingLand$12;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingLand$12;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingLand;->p2:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingLand$12$1$1;->c:Lcom/mycompany/app/setting/SettingLand$12$1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingLand$12$1;->c:Lcom/mycompany/app/setting/SettingLand$12;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingLand$12;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingLand;->J0(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
