.class Lcom/mycompany/app/setting/SettingFont$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$26;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$26;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$26$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$26$1;-><init>(Lcom/mycompany/app/setting/SettingFont$26;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
