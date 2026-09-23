.class Lcom/mycompany/app/dialog/DialogImageBack$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/dialog/DialogImageBack;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogImageBack;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageBack$6;->g:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogImageBack$6;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/dialog/DialogImageBack$6;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogImageBack$6;->g:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageBack;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogImageBack$6;->c:I

    .line 9
    .line 10
    if-gez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget v1, p0, Lcom/mycompany/app/dialog/DialogImageBack$6;->f:I

    .line 15
    .line 16
    add-int/lit8 v2, v1, -0x1

    .line 17
    .line 18
    if-le v0, v2, :cond_2

    .line 19
    .line 20
    add-int/lit8 v0, v1, -0x1

    .line 21
    .line 22
    :cond_2
    :goto_0
    sget-object v1, Lcom/mycompany/app/main/MainConst;->v:[I

    .line 23
    .line 24
    aget v1, v1, v0

    .line 25
    .line 26
    sget-object v2, Lcom/mycompany/app/main/MainConst;->w:[F

    .line 27
    .line 28
    aget v0, v2, v0

    .line 29
    .line 30
    iget v2, p1, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 31
    .line 32
    if-ne v2, v1, :cond_4

    .line 33
    .line 34
    iget v2, p1, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 35
    .line 36
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    :goto_1
    return-void

    .line 44
    :cond_4
    :goto_2
    iput v1, p1, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 45
    .line 46
    iput v0, p1, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 47
    .line 48
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogImageBack;->B(Lcom/mycompany/app/dialog/DialogImageBack;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogImageBack;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 52
    .line 53
    iget v1, p1, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 54
    .line 55
    iget p1, p1, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 56
    .line 57
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/view/MyPaletteView;->b(FI)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
