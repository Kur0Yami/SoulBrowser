.class Lcom/mycompany/app/dialog/DialogExtract$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogExtract$8$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract$8$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$8$1$1;->c:Lcom/mycompany/app/dialog/DialogExtract$8$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$8$1$1;->c:Lcom/mycompany/app/dialog/DialogExtract$8$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogExtract$8$1;->c:Lcom/mycompany/app/dialog/DialogExtract$8;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogExtract$8;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    array-length v2, v1

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    aget-object v1, v1, v2

    .line 19
    .line 20
    new-instance v2, Lcom/mycompany/app/dialog/DialogExtract$10;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogExtract$10;-><init>(Lcom/mycompany/app/dialog/DialogExtract;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogExtract;->i0:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
