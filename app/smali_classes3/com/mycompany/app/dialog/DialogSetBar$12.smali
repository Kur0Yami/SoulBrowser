.class Lcom/mycompany/app/dialog/DialogSetBar$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetBar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar$12;->a:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar$12;->a:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogSetBar;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    int-to-float p2, p2

    .line 9
    iget p3, p1, Lcom/mycompany/app/dialog/DialogSetBar;->H0:F

    .line 10
    .line 11
    mul-float/2addr p2, p3

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogSetBar;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    iget v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    .line 26
    if-ne v0, p2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetBar;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyRoundImage;->j()V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method
