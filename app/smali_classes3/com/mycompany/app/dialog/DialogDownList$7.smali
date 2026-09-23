.class Lcom/mycompany/app/dialog/DialogDownList$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$7;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$7;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const v0, -0x252526

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 18
    .line 19
    const p2, -0xe19938

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
