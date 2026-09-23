.class Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/image/ImageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;->a:Lcom/mycompany/app/image/ImageViewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "net.kaki87.soul2.testing.ACTION_DOWN_COMPLETE"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;->a:Lcom/mycompany/app/image/ImageViewActivity;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewActivity;->g1:Lcom/mycompany/app/image/ImageViewWrapper;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const-string v0, "EXTRA_STATUS"

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    if-ne v4, v1, :cond_3

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_3
    const-string v0, "EXTRA_ID"

    .line 42
    .line 43
    const-wide/16 v1, -0x1

    .line 44
    .line 45
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    const-string v0, "secretMode"

    .line 50
    .line 51
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 52
    .line 53
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    new-instance v2, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver$1;

    .line 58
    .line 59
    move-object v3, p0

    .line 60
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/image/ImageViewActivity$DownReceiver$1;-><init>(Lcom/mycompany/app/image/ImageViewActivity$DownReceiver;IJZ)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
