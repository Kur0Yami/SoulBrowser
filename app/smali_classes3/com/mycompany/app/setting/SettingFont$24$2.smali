.class Lcom/mycompany/app/setting/SettingFont$24$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingFont$24;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont$24;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$24$2;->c:Lcom/mycompany/app/setting/SettingFont$24;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$24$2;->c:Lcom/mycompany/app/setting/SettingFont$24;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont$24;->f:Lcom/mycompany/app/setting/SettingFont;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/setting/SettingFont;->s2:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, v1, Lcom/mycompany/app/setting/SettingFont;->s2:Z

    .line 12
    .line 13
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingFont;->W1:Lcom/mycompany/app/view/MyCoverView;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingFont;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$24;->c:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Lcom/mycompany/app/setting/SettingFont$24$2$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingFont$24$2$1;-><init>(Lcom/mycompany/app/setting/SettingFont$24$2;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
