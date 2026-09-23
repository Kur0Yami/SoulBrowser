.class Lcom/mycompany/app/dialog/DialogWebVie2$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebVie2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$31;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$31;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebVie2;->dismiss()V

    return-void
.end method
