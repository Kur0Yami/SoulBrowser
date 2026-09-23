.class public Lcom/mycompany/app/web/WebShortTab;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->W0:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "net.kaki87.soul2.testing.ACTION_TAB_SECRET"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 22
    .line 23
    if-ne v0, p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/mycompany/app/web/WebShortTab$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebShortTab$1;-><init>(Lcom/mycompany/app/web/WebShortTab;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    sput-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 40
    .line 41
    new-instance p1, Lcom/mycompany/app/web/WebShortTab$2;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebShortTab$2;-><init>(Lcom/mycompany/app/web/WebShortTab;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
