.class Lcom/mycompany/app/view/MyDialogNormal$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyDialogNormal;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogNormal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal$5;->a:Lcom/mycompany/app/view/MyDialogNormal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    :goto_0
    return-object p2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal$5;->a:Lcom/mycompany/app/view/MyDialogNormal;

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/mycompany/app/view/MyDialogNormal;->c(Lcom/mycompany/app/view/MyDialogNormal;Landroid/view/WindowInsets;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogNormal;->f()V

    .line 13
    .line 14
    .line 15
    return-object p2
.end method
