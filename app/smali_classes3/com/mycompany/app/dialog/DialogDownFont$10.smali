.class Lcom/mycompany/app/dialog/DialogDownFont$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFont;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont$10;->a:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont$10;->a:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogDownFont;->l0:Z

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogDownFont;->l0:Z

    .line 9
    .line 10
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogDownFont;->D(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
