.class Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainMusicActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainMusicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;->a:Lcom/mycompany/app/main/MainMusicActivity;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;->a:Lcom/mycompany/app/main/MainMusicActivity;

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/mycompany/app/main/MainMusicActivity;->y1:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Lcom/mycompany/app/main/MainMusicActivity;->y1:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p2, Lcom/mycompany/app/main/MainMusicActivity$EventReceiver$1;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainMusicActivity$EventReceiver$1;-><init>(Lcom/mycompany/app/main/MainMusicActivity$EventReceiver;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
