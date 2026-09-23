.class Lcom/mycompany/app/dialog/DialogEditIcon$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/dialog/DialogEditIcon;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditIcon;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon$6;->g:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogEditIcon$6;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/dialog/DialogEditIcon$6;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon$6;->g:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon$6;->c:I

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
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditIcon$6;->f:I

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
    iget v1, p1, Lcom/mycompany/app/dialog/DialogEditIcon;->e0:I

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    if-ne v1, v2, :cond_3

    .line 26
    .line 27
    sget-object v1, Lcom/mycompany/app/main/MainConst;->r:[I

    .line 28
    .line 29
    aget v1, v1, v0

    .line 30
    .line 31
    iput v1, p1, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    sget-object v1, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 35
    .line 36
    aget v1, v1, v0

    .line 37
    .line 38
    iput v1, p1, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 39
    .line 40
    :goto_1
    sget-object v1, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 41
    .line 42
    aget v0, v1, v0

    .line 43
    .line 44
    iput v0, p1, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditIcon;->E()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 50
    .line 51
    iget v1, p1, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 52
    .line 53
    iget p1, p1, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/view/MyPaletteView;->b(FI)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
