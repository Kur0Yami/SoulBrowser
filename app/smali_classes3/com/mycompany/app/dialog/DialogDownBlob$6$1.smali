.class Lcom/mycompany/app/dialog/DialogDownBlob$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownBlob$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownBlob$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownBlob$6$1;->c:Lcom/mycompany/app/dialog/DialogDownBlob$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownBlob$6$1;->c:Lcom/mycompany/app/dialog/DialogDownBlob$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownBlob$6;->c:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 11
    .line 12
    sget v2, Lnet/kaki87/soul2/testing/R$string;->exist_file:I

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownBlob;->dismiss()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
