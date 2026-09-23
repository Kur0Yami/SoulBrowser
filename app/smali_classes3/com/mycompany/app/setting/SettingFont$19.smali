.class Lcom/mycompany/app/setting/SettingFont$19;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$19;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$19;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->t2:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->j3(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->y2:Ljava/lang/String;

    .line 14
    .line 15
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->n:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/mycompany/app/pref/PrefRead;->o:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->u1(Landroid/content/Context;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->y2:Ljava/lang/String;

    .line 31
    .line 32
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    sget-object v1, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 39
    .line 40
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingFont;->E0(Lcom/mycompany/app/setting/SettingFont;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->B2:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->A2:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    const-string v1, "soul_font_"

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->A2:Ljava/lang/String;

    .line 62
    .line 63
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$19$1;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$19$1;-><init>(Lcom/mycompany/app/setting/SettingFont$19;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method
