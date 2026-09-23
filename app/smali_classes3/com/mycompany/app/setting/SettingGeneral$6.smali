.class Lcom/mycompany/app/setting/SettingGeneral$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingGeneral;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingGeneral;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingGeneral$6;->c:Lcom/mycompany/app/setting/SettingGeneral;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->h()Landroidx/core/os/LocaleListCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/core/os/LocaleListCompat;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->c(I)Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral$6;->c:Lcom/mycompany/app/setting/SettingGeneral;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingGeneral;->S0()[[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1, v2}, Lcom/mycompany/app/setting/AppLocales;->a([[Ljava/lang/String;Ljava/util/Locale;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, v0, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    new-instance v1, Lcom/mycompany/app/setting/SettingGeneral$6$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingGeneral$6$1;-><init>(Lcom/mycompany/app/setting/SettingGeneral$6;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method
