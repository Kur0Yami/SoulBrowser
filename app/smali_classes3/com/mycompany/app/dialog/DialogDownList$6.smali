.class Lcom/mycompany/app/dialog/DialogDownList$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$6;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$6;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogDownList;->z0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 14
    .line 15
    const v1, -0xe19938

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 22
    .line 23
    const v1, -0x252526

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
