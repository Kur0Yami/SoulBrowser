.class Lcom/mycompany/app/setting/SettingFont$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/setting/SettingFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$24;->f:Lcom/mycompany/app/setting/SettingFont;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/setting/SettingFont$24;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingFont;->J2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$24;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "app://"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingFont$24;->f:Lcom/mycompany/app/setting/SettingFont;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object v1, v2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->h6(Landroid/content/Context;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :goto_1
    if-nez v1, :cond_3

    .line 32
    .line 33
    iget-object v0, v2, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$24$1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$24$1;-><init>(Lcom/mycompany/app/setting/SettingFont$24;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iget-object v1, v2, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-static {v2}, Lcom/mycompany/app/setting/SettingFont;->L0(Lcom/mycompany/app/setting/SettingFont;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    iget-object v0, v2, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    :goto_2
    return-void

    .line 64
    :cond_5
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$24$2;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$24$2;-><init>(Lcom/mycompany/app/setting/SettingFont$24;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method
