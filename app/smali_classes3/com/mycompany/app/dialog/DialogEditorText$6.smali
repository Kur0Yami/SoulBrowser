.class Lcom/mycompany/app/dialog/DialogEditorText$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/dialog/DialogEditorText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorText;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorText$6;->g:Lcom/mycompany/app/dialog/DialogEditorText;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogEditorText$6;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/dialog/DialogEditorText$6;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorText$6;->g:Lcom/mycompany/app/dialog/DialogEditorText;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditorText;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditorText$6;->c:I

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
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditorText$6;->f:I

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
    sget-object v1, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 23
    .line 24
    aget v1, v1, v0

    .line 25
    .line 26
    iput v1, p1, Lcom/mycompany/app/dialog/DialogEditorText;->k0:I

    .line 27
    .line 28
    sget-object v1, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 29
    .line 30
    aget v0, v1, v0

    .line 31
    .line 32
    iput v0, p1, Lcom/mycompany/app/dialog/DialogEditorText;->l0:F

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditorText;->C()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditorText;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 38
    .line 39
    iget v1, p1, Lcom/mycompany/app/dialog/DialogEditorText;->k0:I

    .line 40
    .line 41
    iget p1, p1, Lcom/mycompany/app/dialog/DialogEditorText;->l0:F

    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/view/MyPaletteView;->b(FI)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
