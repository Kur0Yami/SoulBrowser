.class Lcom/mycompany/app/dialog/DialogQuickIcon$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogQuickIcon;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon$3;->c:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickIcon$3;->c:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogQuickIcon;->b0:Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogQuickIcon;->i0:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;->a(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogQuickIcon;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
