.class Lcom/mycompany/app/setting/SettingFont$5$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingFont$5$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont$5$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$5$1$1$1;->c:Lcom/mycompany/app/setting/SettingFont$5$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$5$1$1$1;->c:Lcom/mycompany/app/setting/SettingFont$5$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$5$1$1;->c:Lcom/mycompany/app/setting/SettingFont$5$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont$5$1;->c:Lcom/mycompany/app/setting/SettingFont$5;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingFont$5;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingFont;->Y1:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/mycompany/app/setting/SettingFontAdapter;->v(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$5$1;->c:Lcom/mycompany/app/setting/SettingFont$5;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$5;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$5$1$1$1$1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$5$1$1$1$1;-><init>(Lcom/mycompany/app/setting/SettingFont$5$1$1$1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method
