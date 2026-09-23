.class Lcom/mycompany/app/setting/SettingFont$20;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$20;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$20;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingFont;->E0(Lcom/mycompany/app/setting/SettingFont;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->B2:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->A2:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "soul_font_"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->A2:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$20$1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$20$1;-><init>(Lcom/mycompany/app/setting/SettingFont$20;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
