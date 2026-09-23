.class Lcom/mycompany/app/dialog/DialogViewSrc$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$26;->a:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogViewSrc;->s0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$26;->a:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 4
    .line 5
    iget-object p3, p1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewSrc$29;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2}, Lcom/mycompany/app/dialog/DialogViewSrc$29;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
