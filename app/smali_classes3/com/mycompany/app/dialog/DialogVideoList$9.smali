.class Lcom/mycompany/app/dialog/DialogVideoList$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebSnsLoad$SnsLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogVideoList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList$9;->a:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList$9;->a:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogVideoList;->k0:Lcom/mycompany/app/web/WebVkvLoad;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogVideoList;->j0:Lcom/mycompany/app/dialog/DialogVideoList$VkvListListener;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p2}, Lcom/mycompany/app/dialog/DialogVideoList$VkvListListener;->a(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogVideoList;->I()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogVideoList;->C0:Ljava/util/List;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    iput p2, p1, Lcom/mycompany/app/dialog/DialogVideoList;->D0:I

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogVideoList;->O()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogVideoList;->K()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onError(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList$9;->a:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogVideoList;->L(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogVideoList;->M()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
