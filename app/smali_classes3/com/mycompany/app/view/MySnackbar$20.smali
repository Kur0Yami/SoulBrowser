.class Lcom/mycompany/app/view/MySnackbar$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$20;->a:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 0

    .line 1
    sget p1, Lcom/mycompany/app/view/MySnackbar;->u0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MySnackbar$20;->a:Lcom/mycompany/app/view/MySnackbar;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/view/MySnackbar;->u()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/mycompany/app/view/MySnackbar$20;->a:Lcom/mycompany/app/view/MySnackbar;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p2, p3}, Lcom/mycompany/app/view/MySnackbar;->b(Lcom/mycompany/app/view/MySnackbar;Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget p1, Lcom/mycompany/app/view/MySnackbar;->u0:I

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/mycompany/app/view/MySnackbar;->u()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
