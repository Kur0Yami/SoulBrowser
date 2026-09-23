.class Lcom/mycompany/app/view/MyDialogNormal$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogNormal;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogNormal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal$9;->c:Lcom/mycompany/app/view/MyDialogNormal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/view/MyDialogNormal;->v:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal$9;->c:Lcom/mycompany/app/view/MyDialogNormal;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupWrap;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
