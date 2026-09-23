.class Lcom/mycompany/app/setting/SettingFont$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingFont$20;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont$20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$20$1;->c:Lcom/mycompany/app/setting/SettingFont$20;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$20$1;->c:Lcom/mycompany/app/setting/SettingFont$20;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont$20;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingFont;->B2:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingFont;->B2:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$20;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 18
    .line 19
    iput-boolean v3, v0, Lcom/mycompany/app/setting/SettingFont;->G2:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont$20;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 23
    .line 24
    iget-object v4, v1, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingFont;->A2:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v4, v1, v2}, Lcom/mycompany/app/main/MainUtil;->r6(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$20;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 35
    .line 36
    iput-boolean v3, v0, Lcom/mycompany/app/setting/SettingFont;->G2:Z

    .line 37
    .line 38
    return-void
.end method
