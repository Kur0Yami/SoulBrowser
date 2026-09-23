.class Lcom/mycompany/app/main/MainTorrentLauncher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTorrentLauncher;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTorrentLauncher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTorrentLauncher$2;->c:Lcom/mycompany/app/main/MainTorrentLauncher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/main/MainTorrentLauncher;->l1:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/MainTorrentLauncher$2;->c:Lcom/mycompany/app/main/MainTorrentLauncher;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainTorrentLauncher;->v0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/mycompany/app/main/MainTorrentLauncher;->h1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
