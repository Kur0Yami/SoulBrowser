.class Lcom/mycompany/app/quick/QuickAdd$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickAdd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$20;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/quick/QuickAdd$20;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 2
    .line 3
    iget-object v0, p3, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p3, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x12

    .line 17
    .line 18
    invoke-virtual {p3, v0, p2, p1}, Lcom/mycompany/app/quick/QuickAdd;->T0(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
