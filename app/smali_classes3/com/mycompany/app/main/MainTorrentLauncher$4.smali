.class Lcom/mycompany/app/main/MainTorrentLauncher$4;
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
    iput-object p1, p0, Lcom/mycompany/app/main/MainTorrentLauncher$4;->c:Lcom/mycompany/app/main/MainTorrentLauncher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/main/MainTorrentLauncher;->l1:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/MainTorrentLauncher$4;->c:Lcom/mycompany/app/main/MainTorrentLauncher;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainTorrentLauncher;->w0()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
