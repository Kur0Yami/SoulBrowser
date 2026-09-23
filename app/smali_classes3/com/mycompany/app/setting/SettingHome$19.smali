.class Lcom/mycompany/app/setting/SettingHome$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingHome;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$19;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingHome;->E2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome$19;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingHome;->y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingHome;->y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 14
    .line 15
    new-instance v0, Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, p1, v2, v1}, Lcom/mycompany/app/setting/SettingHome$HistTask;-><init>(Lcom/mycompany/app/setting/SettingHome;ZZ)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingHome;->y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
