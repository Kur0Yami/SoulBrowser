.class Lcom/mycompany/app/dialog/DialogImageBack$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPaletteView$PaletteListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogImageBack;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogImageBack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageBack$7;->a:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(FI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageBack$7;->a:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 4
    .line 5
    if-ne v1, p2, :cond_1

    .line 6
    .line 7
    iget v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 8
    .line 9
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    :goto_0
    iput p2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 18
    .line 19
    iput p1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 20
    .line 21
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogImageBack;->B(Lcom/mycompany/app/dialog/DialogImageBack;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
