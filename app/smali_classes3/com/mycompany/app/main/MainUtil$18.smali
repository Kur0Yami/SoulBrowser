.class Lcom/mycompany/app/main/MainUtil$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainUtil$18;->c:Landroid/widget/EditText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/mycompany/app/main/MainUtil$18$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainUtil$18$1;-><init>(Lcom/mycompany/app/main/MainUtil$18;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x64

    .line 10
    .line 11
    iget-object p2, p0, Lcom/mycompany/app/main/MainUtil$18;->c:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
