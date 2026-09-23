.class public final synthetic Lkotlin/text/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/CharSequence;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lkotlin/text/h;->c:I

    iput-object p1, p0, Lkotlin/text/h;->f:Ljava/lang/CharSequence;

    iput-object p3, p0, Lkotlin/text/h;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lkotlin/text/h;->c:I

    iget-object v1, p0, Lkotlin/text/h;->f:Ljava/lang/CharSequence;

    iget-object v2, p0, Lkotlin/text/h;->g:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, p1}, Lkotlin/text/StringsKt___StringsKt;->k(ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
