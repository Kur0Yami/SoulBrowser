.class Lcom/mycompany/app/dialog/DialogViewSrc$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$19;->a:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$19;->a:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->k0:Ljava/lang/String;

    .line 6
    .line 7
    new-instance p1, Lcom/mycompany/app/dialog/DialogViewSrc$19$1;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$19$1;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc$19;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
