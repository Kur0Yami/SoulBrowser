.class Lcom/mycompany/app/dialog/DialogSetHead$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetHead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetHead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHead$3;->a:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead$3;->a:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetHead;->j0:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_1

    .line 6
    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    sget-object v1, Lcom/mycompany/app/main/MainConst;->u:[I

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-lt p1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput p1, v0, Lcom/mycompany/app/dialog/DialogSetHead;->j0:I

    .line 16
    .line 17
    aget p1, v1, p1

    .line 18
    .line 19
    iput p1, v0, Lcom/mycompany/app/dialog/DialogSetHead;->k0:I

    .line 20
    .line 21
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->p6(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, v0, Lcom/mycompany/app/dialog/DialogSetHead;->l0:I

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetHead;->B()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
