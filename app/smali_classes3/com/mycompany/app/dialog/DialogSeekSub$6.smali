.class Lcom/mycompany/app/dialog/DialogSeekSub$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSub$6;->c:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogSeekSub;->p0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSub$6;->c:Lcom/mycompany/app/dialog/DialogSeekSub;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekSub;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, p1, Lcom/mycompany/app/dialog/DialogSeekSub;->n0:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, -0x64

    .line 12
    .line 13
    mul-int/lit16 v1, v1, 0x3e8

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekSub;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
