.class Lcom/mycompany/app/setting/SettingHome$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingHome$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$3$1;->c:Lcom/mycompany/app/setting/SettingHome$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$3$1;->c:Lcom/mycompany/app/setting/SettingHome$3;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome$3;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mycompany/app/setting/SettingHome;->P0(Lcom/mycompany/app/setting/SettingHome;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingHome$3;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingHome;->A2:Z

    .line 12
    .line 13
    return-void
.end method
