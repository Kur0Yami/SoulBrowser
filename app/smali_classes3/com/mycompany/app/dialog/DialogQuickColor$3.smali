.class Lcom/mycompany/app/dialog/DialogQuickColor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogQuickColor;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickColor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickColor$3;->c:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickColor$3;->c:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->b0:Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    instance-of v1, p1, Ljava/lang/Integer;

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_3
    check-cast p1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-gez p1, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    sget-object v1, Lcom/mycompany/app/main/MainConst;->b0:[I

    .line 33
    .line 34
    array-length v2, v1

    .line 35
    if-lt p1, v2, :cond_5

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_5
    aget p1, v1, p1

    .line 39
    .line 40
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogQuickColor;->b0:Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;

    .line 41
    .line 42
    invoke-interface {v0, p1}, Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;->a(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
