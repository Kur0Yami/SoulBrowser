.class Lcom/mycompany/app/setting/SettingGeneral$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingGeneral$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingGeneral$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingGeneral$5$1;->c:Lcom/mycompany/app/setting/SettingGeneral$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingGeneral$5$1;->c:Lcom/mycompany/app/setting/SettingGeneral$5;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingGeneral$5;->a:Lcom/mycompany/app/setting/SettingGeneral;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    sget-object v1, Landroidx/core/os/LocaleListCompat;->b:Landroidx/core/os/LocaleListCompat;

    .line 11
    .line 12
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->z(Landroidx/core/os/LocaleListCompat;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingGeneral;->S0()[[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v1, v1, Lcom/mycompany/app/setting/SettingGeneral;->a2:I

    .line 21
    .line 22
    invoke-static {v2, v1}, Lcom/mycompany/app/setting/AppLocales;->b([[Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->b(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->z(Landroidx/core/os/LocaleListCompat;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingGeneral$5;->a:Lcom/mycompany/app/setting/SettingGeneral;

    .line 34
    .line 35
    iput-boolean v3, v0, Lcom/mycompany/app/setting/SettingGeneral;->b2:Z

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 38
    .line 39
    return-void
.end method
